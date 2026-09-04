class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.174.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.174.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "2af56f0c169e9b4b12cb97cd00032636754aff69135424fa93202cf62489dc13"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.174.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "d2b7b4a14e111aeb7321b534cbfbc1e20c6bfe897e20d37e683a3e81aebb8924"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.174.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "7b7025ece00e4dfe6d18e961c2bfe1e7b08503cc3fe7ec37f9fa74f76dbfb707"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.174.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "877b573e242eeac8c812d90fff69290d4963f3cad3f1ca7ae9d4016ac99bd991"
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
