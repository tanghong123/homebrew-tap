class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.381.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.381.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "6bd018b0fdfb0bf913f61646bd7d7289d7f6371724414e5e399f7dc72ff89842"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.381.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "62e9c8b45c3cd0253984770b7c940ede9269a901931765e252b0536464a6a6c8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.381.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c5af981b5446c8ce32687f4f42499d85614a19b04e6a57edc3199041570187d9"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.381.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c5791e55386391e0be8b63f7a3aafd6d73aa77ffe08098b35a29bb89bc103f6c"
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
