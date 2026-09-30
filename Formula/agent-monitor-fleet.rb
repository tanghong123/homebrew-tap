class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.331.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.331.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "53df6b5c926dfaeff26e0bb96891966fb59678b8969649db729203a48b8dab86"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.331.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "371fcdc517d14b15bd49e1e5f22052d95fdc330a00e90d234030f251a7a29740"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.331.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "1aa8844edb24e96fe18e19a78e963413d30e391d31442a3f476ab25cd44dd9a6"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.331.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "f2a7be5ff8219cebfde3eb0e43691b32c6f7280421965980632c0fa4dc8b4a75"
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
