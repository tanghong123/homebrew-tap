class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.448.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.448.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "46780248fe48de599b2ef6ad831d253254af7dd98c40a83779dfa70b593cddcd"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.448.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "9c3fca012de1e1620b50b3a20148df38fc5c272b61ea05d9eb10320c1f734441"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.448.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "1436d1bfc77fddc64c51deec6a283aed3478eb1f73699dda3c43bf376a5b8465"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.448.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "4376f45c9eb8ab0c9fb9ccf2823a5645aad6f1833bfe8c3e3b8054a96aba6bf8"
    end
  end

  def install
    bin.install "agent-monitor-fleet"
    bin.install_symlink bin/"agent-monitor-fleet" => "claude-monitor-fleet"
  end

  test do
    assert_match "agent-monitor-fleet #{version}", shell_output("#{bin}/agent-monitor-fleet --version")
  end
end
