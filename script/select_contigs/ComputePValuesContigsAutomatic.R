# The binomial test
# Input: ChIP count, control count and the ratio (total Chip/total control)
getBinomial <- function(counts, ratio){
  x1 <- as.integer(counts[2])
  x0 <- as.integer(counts[3])
  p0 <- ratio/(ratio+1) # expected probability in ChIP under H0
  return (binom.test(x1, x1+x0, p=p0, alternative="greater")$p.value)
}

getPoisson <- function(x){
	a.n=as.numeric
	return(ppois(a.n(x[2]),a.n(x[3]),lower.tail=F,log=T))
}

getLenPoisson <- function(x){
	a.n=as.numeric
	return(ppois(a.n(x[5]),a.n(x[6]),lower.tail=F,log=T))
}


makePRcurve <- function(data,cols,names){
	color=c("black","red","blue","darkgreen")
	labels=""	
	require(ROCR)
	for(i in 1:length(cols)){
		pred=prediction(-(data[,cols[i]]),data$overlap)
		perf=performance(pred,"prec","rec")
		#auc=round(unlist(slot(performance(pred,measure="auc"), "y.values")),4)
		labels[i]=paste(names[i],sep="")
		if(i==1){
			plot(perf,lwd=3,col=color[i])
		}else{
			plot(perf,add=T,lwd=3,col=color[i])		
		}
	}
	legend("topright",legend=labels,lwd=3,col=color[1:length(cols)])
}


args=commandArgs()

#### TODO
folder= args[4]

##setwd("/Users/Marcel/Projects/ChipSeq")



ctrl=read.table(paste(folder,"ContigsCountsControl.dat",sep=""),header=F,sep="\t")
names(ctrl)=c("ContigID","expCtrl")
chip=read.table(paste(folder,"ContigsCountsChip.dat",sep=""),header=F,sep="\t")
names(chip)=c("ContigID","expChip")

contigs=read.table(paste(folder,"contigLengths.dat",sep=""),header=F,sep="\t")
names(contigs)=c("ContigID","len")

#correction factors
#corrChip=sum(chip$expChip)
#corrCtrl=sum(ctrl$expCtrl)
corrChip=args[5]
corrCtrl=args[6]

show(paste(folder,corrCtrl,corrChip,folder,as.numeric(corrChip)))
ratio= as.numeric(corrChip)/as.numeric(corrCtrl)
show(ratio)


mm=merge(chip,ctrl,by="ContigID",all.x=T)
mm=merge(mm,contigs,by="ContigID")
#take away contigs that are too short or too long
mm=subset(mm,len>=50)
#mm=subset(mm,len<=500)
#remove entries that have a low count in the Chip experiment
mm=subset(mm,expChip > 5)
#what pseudocount to put for cases where nothing is expressed in control?
#We use 0.01 now just to have something small
# mm$expCtrl[is.na(mm$expCtrl)]=0.0000001#min(mm$expCtrl[!is.na(mm$expCtrl)])
mm$expCtrl[is.na(mm$expCtrl)] <- 0

#apply read mapping correction factor
# mm$expCtrl=mm$expCtrl*ratio

#also get p-values for length normalized coverage values
# mm$normexpChip=mm$expChip/mm$len
# mm$normexpCtrl=mm$expCtrl/mm$len


#####Compute p-values###########

#also add length of contigs
#merge(mm,contigs)
# mm$pvals=apply(mm,1, getPoisson)
mm$pvals=apply(mm,1, getBinomial, ratio=ratio)
# mm$pvalsLen=apply(mm,1, getLenPoisson)
mm$qvals=p.adjust(mm$pvals,method="BH")
# mm$qvalsLen=p.adjust(exp(mm$pvalsLen),method="BH")
mm=mm[order(mm$pvals),]
#enable these lines if you have a ROCR_label file and print a precisionRecal curve
#roc=read.table(paste(folder,"ROCR_label",sep=""))
#names(roc)=c("ContigID","overlap")
#mm=merge(mm,roc)



#mm$ratio=-(mm$expChip/(mm$expCtrl))
mm$ratio=-(mm$expChip/(mm$expCtrl*ratio))
ratio=which(names(mm) == "ratio")
#pdf(paste(folder,"PrecisionRecallcurve.pdf",sep=""))
#makePRcurve(mm,c(7,8,ratio),c("Pval","PvalLen","ratioAbundance"))
#dev.off()
#mm=subset(mm, ratio < -10)
#mm=subset(mm, len <= 500)
mm=subset(mm, ratio < -1.5)

write.table(mm,file=paste(folder,"PvaluesContigs.dat",sep=""),quote=F,row.names=F)


#output the different files
#for( top in c(1000, 2000)){
for( top in c(1000, 2000)){
#	for (type in c(ratio, 5)){
	for (type in c(5)){
#		tb=mm[order(mm[,type]),][1:min(top,nrow(mm)),]
#		tb=subset(tb,len <= 500)
#		write.table(tb[,1],paste(folder,names(mm)[type],"Top",top,".idlist",sep=""),quote=F,row.names=F,col.names=F)
		write.table(mm[order(mm[,type]),][1:min(top,nrow(mm)),1],paste(folder,names(mm)[type],"Top",top,".idlist",sep=""),quote=F,row.names=F,col.names=F)
	}
	
}

#mm=subset(mm, len <= 500)

#write.table(subset(mm,qvals <= 0.05)[,1],paste(folder,"pvalsSignificantQ0.05.idlist",sep=""),quote=F,row.names=F,col.names=F)
#write.table(subset(mm,qvalsLen <= 0.05)[,1],paste(folder,"pvalsLenSignificantQ0.05.idlist",sep=""),quote=F,row.names=F,col.names=F)

