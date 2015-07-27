/***** This code was generated by Yaggo. Do not edit ******/

#ifndef __GENERATE_SEQUENCE_ARGS_HPP__
#define __GENERATE_SEQUENCE_ARGS_HPP__

#include <jellyfish/yaggo.hpp>

class generate_sequence_args {
public:
  long                           seed_arg;
  bool                           seed_given;
  std::vector<uint32_t>          mer_arg;
  typedef std::vector<uint32_t>::iterator mer_arg_it;
  typedef std::vector<uint32_t>::const_iterator mer_arg_const_it;
  bool                           mer_given;
  const char *                   output_arg;
  bool                           output_given;
  bool                           fastq_flag;
  uint32_t                       read_length_arg;
  bool                           read_length_given;
  bool                           verbose_flag;
  std::vector<uint64_t>          length_arg;
  typedef std::vector<uint64_t>::iterator length_arg_it;
  typedef std::vector<uint64_t>::const_iterator length_arg_const_it;

  enum {
    USAGE_OPT = 1000
  };

  generate_sequence_args(int argc, char *argv[]) :
    seed_arg(), seed_given(false),
    mer_arg(), mer_given(false),
    output_arg("output"), output_given(false),
    fastq_flag(false),
    read_length_arg(), read_length_given(false),
    verbose_flag(false)
  {
    static struct option long_options[] = {
      {"seed", 1, 0, 's'},
      {"mer", 1, 0, 'm'},
      {"output", 1, 0, 'o'},
      {"fastq", 0, 0, 'q'},
      {"read-length", 1, 0, 'r'},
      {"verbose", 0, 0, 'v'},
      {"help", 0, 0, 'h'},
      {"usage", 0, 0, USAGE_OPT},
      {"version", 0, 0, 'V'},
      {0, 0, 0, 0}
    };
    static const char *short_options = "hVs:m:o:qr:v";

    std::string err;
#define CHECK_ERR(type,val,which) if(!err.empty()) { std::cerr << "Invalid " #type " '" << val << "' for [" which "]: " << err << "\n"; exit(1); }
    while(true) { 
      int index = -1;
      int c = getopt_long(argc, argv, short_options, long_options, &index);
      if(c == -1) break;
      switch(c) {
      case ':': 
        std::cerr << "Missing required argument for "
                  << (index == -1 ? std::string(1, (char)optopt) : std::string(long_options[index].name))
                  << std::endl;
        exit(1);
      case 'h':
        std::cout << usage() << "\n\n" << help() << std::endl;
        exit(0);
      case USAGE_OPT:
        std::cout << usage() << "\nUse --help for more information." << std::endl;
        exit(0);
      case 'V':
        print_version();
        exit(0);
      case '?':
        std::cerr << "Use --usage or --help for some help\n";
        exit(1);
      case 's':
        seed_given = true;
        seed_arg = yaggo::conv_int<long>((const char *)optarg, err, false);
        CHECK_ERR(long_t, optarg, "-s, --seed=long")
        break;
      case 'm':
        mer_given = true;
        mer_arg.push_back(yaggo::conv_uint<uint32_t>((const char *)optarg, err, false));
        CHECK_ERR(uint32_t, optarg, "-m, --mer=uint32")
        break;
      case 'o':
        output_given = true;
        output_arg = optarg;
        break;
      case 'q':
        fastq_flag = true;
        break;
      case 'r':
        read_length_given = true;
        read_length_arg = yaggo::conv_uint<uint32_t>((const char *)optarg, err, false);
        CHECK_ERR(uint32_t, optarg, "-r, --read-length=uint32")
        break;
      case 'v':
        verbose_flag = true;
        break;
      }
    }
    if(!seed_given)
      error("[-s, --seed=long] required switch");
    if(argc - optind < 1)
      error("Requires at least 1 argument.");
    for( ; optind < argc; ++optind) {
      length_arg.push_back(yaggo::conv_uint<uint64_t>((const char *)argv[optind], err, false));
      CHECK_ERR(uint64_t, argv[optind], "length")
    }
  }
#define generate_sequence_args_USAGE "Usage: generate_sequence [options] length:uint64+"
  const char * usage() const { return generate_sequence_args_USAGE; }
  void error(const char *msg) { 
    std::cerr << "Error: " << msg << "\n" << usage()
              << "\nUse --help for more information"
              << std::endl;
    exit(1);
  }
#define generate_sequence_args_HELP "Generate randome sequence of given lengths.\n\n" \
  "Options (default value in (), *required):\n" \
  " -s, --seed=long                         *Seed\n" \
  " -m, --mer=uint32                         Mer length. Generate matrix of size 2*length\n" \
  " -o, --output=c_string                    Output prefix (output)\n" \
  " -q, --fastq                              Generate fastq file (false)\n" \
  " -r, --read-length=uint32                 Read length for fasta format (default=size of sequence)\n" \
  " -v, --verbose                            Be verbose (false)\n" \
  "     --usage                              Usage\n" \
  " -h, --help                               This message\n" \
  " -V, --version                            Version"

  const char * help() const { return generate_sequence_args_HELP; }
#define generate_sequence_args_HIDDEN "Hidden options:"

  const char * hidden() const { return generate_sequence_args_HIDDEN; }
  void print_version(std::ostream &os = std::cout) const {
#ifndef PACKAGE_VERSION
#define PACKAGE_VERSION "0.0.0"
#endif
    os << PACKAGE_VERSION << "\n";
  }
  void dump(std::ostream &os = std::cout) {
    os << "seed_given:" << seed_given << " seed_arg:" << seed_arg << "\n";
    os << "mer_given:" << mer_given << " mer_arg:" << yaggo::vec_str(mer_arg) << "\n";
    os << "output_given:" << output_given << " output_arg:" << output_arg << "\n";
    os << "fastq_flag:" << fastq_flag << "\n";
    os << "read_length_given:" << read_length_given << " read_length_arg:" << read_length_arg << "\n";
    os << "verbose_flag:" << verbose_flag << "\n";
    os << "length_arg:" << yaggo::vec_str(length_arg) << "\n";
  }
private:
};

#endif // __GENERATE_SEQUENCE_ARGS_HPP__"
