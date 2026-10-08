class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.362.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.362.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "64dcd733f19f2ef98c4b30a019dfb6aadf8a069990abba9adbc4392faf296bf8"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.362.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "11add891ee054e9a47a24276cb32a0db64b0555b2fb8be01f8e8deb351919e02"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.362.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "1e1c2912aa3766a134a2c2d97f8b0c4ec93676fb6570fc603375af9321b75f90"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.362.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "8cbc8fc3029ae3fa59bfd40e605519357de7deef89472214cbff469c9ddb6e49"
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
