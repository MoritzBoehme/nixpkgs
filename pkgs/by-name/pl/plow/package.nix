{ lib
, buildGoModule
, fetchFromGitHub
}:

buildGoModule rec {
  pname = "plow";
  version = "1.3.1";

  src = fetchFromGitHub {
    owner = "six-ddc";
    repo = "plow";
    rev = "v${version}";
    hash = "sha256-TynFq7e4MtZlA5SmGMybhmCVw67yHYgZWffQjuyhTDA=";
  };

  vendorHash = "sha256-t2lBPyCn8bu9hLsWmaCGir9egbX0mQR+8kB0RfY7nHE=";

  ldflags = [ "-s" "-w" ];

  meta = with lib; {
    description = "A high-performance HTTP benchmarking tool that includes a real-time web UI and terminal display";
    homepage = "https://github.com/six-ddc/plow";
    license = licenses.asl20;
    maintainers = with maintainers; [ ];
  };
}
