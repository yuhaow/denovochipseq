from Bio import SeqIO
import sys

def cc_compare (x, y):
	return len(x) - len(y)

def main():

	seqFn = sys.argv[1]
	idxFn = sys.argv[2]
	fidx = open(idxFn, "r")
	outseqFn = sys.argv[3]
	outidxFn = sys.argv[4]
	foutidx = open(outidxFn, "w")

	seq_list = []
	for seq_record in SeqIO.parse(seqFn, 'fasta'):
		seq_list.append(seq_record)

	cc_list = []
	prev_idx = 0
	while 1:
		idx = fidx.readline().strip()
		if not idx:
			break
		idx = int(idx)
		if idx == prev_idx:
			continue
		cc = []
		for i in range(prev_idx, idx):
			cc.append(seq_list[i])
		cc_list.append(cc)
		prev_idx = idx

	cc_list = sorted(cc_list, cmp=cc_compare, reverse=True)

	#number of threads is 8
	thread_list = []
	for i in range(8):
		thread_list.append([])
	for i in range(len(cc_list)):
		thread_list[i%8].append(cc_list[i])
	cc_list = []

	#write sequence and index
	records = []
	cc_list = []
	for i in range(8):
		cc_list += thread_list[i]
	thread_list = []
	sum = 0
	foutidx.write("%d\n" % sum)
	for cc in cc_list:
		records += cc
		sum += len(cc)
		print "length of cluster is: %d, ridx range: %d, %d" % (len(cc), sum - len(cc), sum)
		foutidx.write("%d\n" % sum)
	SeqIO.write(records, outseqFn, 'fasta')

	fidx.close()
	foutidx.close()

if __name__ == "__main__":
	main()
