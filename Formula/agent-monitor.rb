class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.103.4"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.103.4/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "1436c16f969ccbed52353b5eb74aa2e436019465ef84a7d02785eb734deb463f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.103.4/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "0a5805755872f468cf6cbd658ef5e09c70f4a45c83da9e5e05eef46b473439e7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.103.4/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "4b9b64e09866da0f69296fb5beccb03176328a051378237e79cd0a7e9c738d14"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.103.4/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d49a053b0d200e48c49f976917e5795c0e48d4897c58169d4d21ffac94e3c21c"
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
