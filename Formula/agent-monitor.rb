class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.326.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.326.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "1428440ed0a14eab7647cb53802c46186db934b1915a0f069af71f99bd706b4f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.326.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "ef61388e7e8cdd635077a66d6aa2e410705a822e7b403629a95ce057f3f82c85"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.326.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "b3732b81d2a9bd5616bc40fe2685deadb4d4082a4f1634304435656dcbf65a43"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.326.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "81132501d15ea893be018589763dce44c771aef3a42eddf43d7734b8b4d50ee1"
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
