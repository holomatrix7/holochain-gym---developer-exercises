let 
  holonixPath = builtins.fetchTarball {
    url = "https://github.com/holochain/holonix/archive/014d28000c8ed021eb84000edfe260c22e90af8c.tar.gz";
    sha256 = "sha256:0hl5xxxjg2a6ymr44rf5dfvsb0c33dq4s6vibva6yb76yvl6gwfi";
  };
  holonix = import (holonixPath) {
    includeHolochainBinaries = true;
    holochainVersionId = "custom";
    
    holochainVersion = { 
     rev = "7c80ce00fb7ff01b339aa61e258ee548ef1b9a4b";
     sha256 = "sha256:1p4yv0ayldzqjaq1qz8dw2m8ajljhfw6bylwmm62z309b2a3xrzz";
     cargoSha256 = "sha256:03p8vs9qaixqk67447l7q4h3cr0xyqdd1h9alxnx6y5xlz3il0rh";
     bins = {
       holochain = "holochain";
       hc = "hc";
     };
    };
    holochainOtherDepsNames = ["lair-keystore"];
  };
in holonix.main
