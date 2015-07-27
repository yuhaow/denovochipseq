import sys

def main():
	kmerFn = sys.argv[1]
	fkmer = open(kmerFn, "r")
	outFn = sys.argv[2]
	fout = open(outFn, "w")

	vlist = []
	kmerSet = {}
	kmerIdx = 0
	#construct vertex list
	while 1:
		line = fkmer.readline()
		if not line:
			break

		kmers = fkmer.readline().strip().split("\t")
		vkmers = []
		for kmer in kmers:
			if kmer in kmerSet:
				vkmers.append(kmerSet[kmer])
			else:
				kmerSet[kmer] = kmerIdx
				vkmers.append(kmerIdx)
				kmerIdx += 1
		vlist.append(vkmers)
	fkmer.close()
	print "vertex list constructed"

	#construct kmer list
	m = 0
	kmerlist = [[] for i in range(kmerIdx)]
	for i in range(len(vlist)):
		for kmer in vlist[i]:
			kmerlist[kmer].append(i)
			m += 1
	print "kmer list constructed"

	#write into the file
	fout.write("%d %d\n" % (len(vlist) + len(kmerlist), m))
	for v in vlist:
		str = ""
		for kmer in v:
			str += "%d " % (kmer + len(vlist) + 1)
		fout.write(str + "\n")
	fout.close()
	for kmer in kmerlist:
		str = ""
		for v in kmer:
			str += "%d " % (v + 1)
		fout.write(str + "\n")

if __name__ == "__main__":
	main()
