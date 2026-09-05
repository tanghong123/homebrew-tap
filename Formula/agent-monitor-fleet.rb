class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.207.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.207.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "47928d8f2bab4c5337355cf3dc091289dbac51baa865105520e0be203f87c8ae"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.207.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "6e87309c977a93a420f4d648129d832cf522544534e096b61acd273f8083ce83"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.207.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "225ad296f17c69b7e560891885d07976905be156262ad41c6a32d3cd68150a18"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.207.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "35b83b2b73bd44ebf75c22c109e0b008b455f6f9b3554a0f0e7e9556609576db"
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
