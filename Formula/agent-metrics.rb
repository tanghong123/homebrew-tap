class AgentMetrics < Formula
  desc "Usage metrics for every coding agent on a machine, built on claude-replay"
  homepage "https://github.com/tanghong123/homebrew-tap"
  version "0.5.24"
  license "MIT"

  # Binary-only distribution (the knack pattern): the source repository is
  # private; prebuilt binaries ship as release assets on this tap itself.
  on_macos do
    on_arm do
      url "https://github.com/tanghong123/homebrew-tap/releases/download/agent-metrics-0.5.24/agent-metrics-0.5.24-aarch64-apple-darwin.tar.gz"
      sha256 "2fa0fc98b270396df6c59f8be6369375c32679d29b368b991fead030e67182ca"
    end
    on_intel do
      url "https://github.com/tanghong123/homebrew-tap/releases/download/agent-metrics-0.5.24/agent-metrics-0.5.24-x86_64-apple-darwin.tar.gz"
      sha256 "64377f61cb68ca2fac148f524a51dd26517afd18d043e0d81d2f4ee889460ca4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/homebrew-tap/releases/download/agent-metrics-0.5.24/agent-metrics-0.5.24-aarch64-unknown-linux-musl.tar.gz"
      sha256 "a6ac9b52587c23e81acfa50f9eaaf68ff38a933bc223a845fc8684027de80dc5"
    end
    on_intel do
      url "https://github.com/tanghong123/homebrew-tap/releases/download/agent-metrics-0.5.24/agent-metrics-0.5.24-x86_64-unknown-linux-musl.tar.gz"
      sha256 "ee3906097712395caf75d8518fa0aca2d352dbe640f22294e7e63d68dde7efb0"
    end
  end

  def install
    bin.install "agent-metrics"
  end

  test do
    assert_match "agent-metrics #{version}", shell_output("#{bin}/agent-metrics --version")
  end
end
