class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.383.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.383.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "9f879aafa2f475d773821c2b3876b4af0a17441b6aa4f1d0c862de155886241d"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.383.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "28d726208b40835f9c40d69ad9c17c80e9cb8aa47010f76a12431e1722adf235"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.383.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "dafd9ac626ff21dc0613ed90aed3776f13c9c220602c7279bb7965743794aa23"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.383.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "3cd8d40bceb1b17452208d433f9841bdf228042781523a8ab2c6430af44b66bb"
    end
  end

  def install
    bin.install "agent-monitor"
    bin.install_symlink bin/"agent-monitor" => "claude-monitor"
  end

  test do
    assert_match "agent-monitor", shell_output("#{bin}/agent-monitor --help")
  end
end
