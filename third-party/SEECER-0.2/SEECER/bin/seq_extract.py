import sys

def main():
	partFn = sys.argv[1]
	fpart = open(partFn, "r")
	seqFn = sys.argv[2]
	fseq = open(seqFn, "r")
	oseqFn = sys.argv[3]
	foseq = open(oseqFn, "w")
	rangeFn = sys.argv[4]
	frange = open(rangeFn, "w")
	seqNum = 

	partList = []
	clustDict = [[] for i in range(8)]

	while 1:
		line = fpart.readline()
		if not line:
			break
		partList.append(int(line.strip()))

	readNum = 0
	while 1:
		idx = fseq.readline()
		seq = fseq.readline()
		if not idx:
			break
		clustDict[partList[readNum]].append((idx.strip(), seq.strip()))
		readNum += 1

	frange.write("0\n")
	readNum = 0
	for clust in clustDict:
		for seq in clust:
			foseq.write("%s\n%s\n" % seq[0], seq[1])
			readNum += 1
		frange.write("%d\n" % readNum)

	fpart.close()
	fseq.close()
	foseq.close()
	frange.close()

if __name__ == "__main__":
	main()
