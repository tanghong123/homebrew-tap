class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.577.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.577.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "d1de364227cb33b402ccf770a9122f74c2fc27df2661ab6faaf5f29941bbdb7f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.577.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "fb0caf01c940fe34725cb57779a62209e85c697ec34c6b710dc6f4ed9e19b6c2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.577.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "b3c620b07241a1095927e1f932a550d5d2eb6f6e64b24cc294cd43ee75d38df1"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.577.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "833b531e72fd508e573f3c01e6ce4f49389c18c3036bf9b105e1c2745200c129"
    end
  end

  def install
    bin.install "agent-monitor-fleet"
  end

  test do
    assert_match "agent-monitor-fleet #{version}", shell_output("#{bin}/agent-monitor-fleet --version")
  end
end
