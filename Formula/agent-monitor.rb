class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.414.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.414.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "67b344dd3667f426680ea9d5388df13274bcc36a75c1bf7a42c9072b1d22f35d"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.414.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "e910d8a66f574ec604b7daa717bd8716365a2f483b8e601aa26eb892311b8da7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.414.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "1ed00aa29ed772a21ee9bc35749e6fb6004f3819ccfd29963118e2ba1e17b3b1"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.414.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "bba3c76261b1884bafd6a342945290f34512071372bc054c27ee530207ac01c5"
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
