class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.207.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.207.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "213479e048fa1828f9834d8478c678842b2f578ff1829bcc758289e87e77b327"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.207.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "2431d02a11bb72bb42fe2cd265d9404c932c2b177c8fe869da5bcbf92b4e3282"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.207.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "daea0f369027dc227964b5bf50e824e3ae8854611a20c0379d360374b456bffd"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.207.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "44de09756ae180a23499cddd378d67dc7edf4bc5a9a90b5e6cc48a9d5736f3db"
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
