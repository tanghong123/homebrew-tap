class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.550.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.550.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "1ec868fb7cab074ebb3da428862452463e09cba84c5890dcbfbb2e8fd659209f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.550.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "ae522ff260b8d1bb71974acd8d153c8ae38988e4f54a7abe2dde34dac8798f1c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.550.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "4f1f691724a2ccadf78226b9e82e44c2feaf76b558643a4fabc36a7440a1c295"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.550.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b98be23442ebdfd862bc890083d091976f7e114c76c5cab99033ff5a36f99874"
    end
  end

  def install
    bin.install "agent-monitor-fleet"
  end

  test do
    assert_match "agent-monitor-fleet #{version}", shell_output("#{bin}/agent-monitor-fleet --version")
  end
end
