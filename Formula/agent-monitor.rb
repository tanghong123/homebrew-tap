class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.130.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.130.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "253ac520d8a981055ac9381088180b9f954c16fb7a370181a079bb779eabb7f8"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.130.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "846652f9351fbbdd897a06f8e65cc94df2f1d5547d23ca3337595d490f1fe0a3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.130.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "3c95aa60bf1ea6255c0aff7f1bffad24e16d8acb8cec3520696dbbb47fddb4fe"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.130.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "fc53e2ebd7c719ce95d91477c12239365db432d71ae4a3fb2a9e54958edff231"
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
