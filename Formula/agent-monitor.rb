class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.249.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.249.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "380218417cc92c0892e6833048f45d1cb90019180585c13f03718dd6700951ad"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.249.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "6ee0dd658b63898f64eae9138923ae0766fc877772ec732dcf598d8cb4cc1ce6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.249.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "3b97e625aee6a48aeacf92ddded691e910ad2585a2db246cde776120346c10b8"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.249.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "470f334aa09c33bb3b8fa61ff225e4ccd7640c2bf7aeedafc96f428ab4864bf6"
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
