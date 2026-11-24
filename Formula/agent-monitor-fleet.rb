class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.559.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.559.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "329ff78a7b143c6c7b0208d621b1c68e41d89fd7a309d5db5d7496c4db31c5a0"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.559.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "1753cffbd59fffea013460734995bf7ac6d15d28a19a081bf2c337e31ea0c305"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.559.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "459e5ab15aac1f8965dfe43d44a00475a205ed225cbea3e9e6d6964c1b54a455"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.559.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d9d030b40ac709e56a4386f1586599cabfad294f6ec81f65f5f4cb8a1f9dba1f"
    end
  end

  def install
    bin.install "agent-monitor-fleet"
  end

  test do
    assert_match "agent-monitor-fleet #{version}", shell_output("#{bin}/agent-monitor-fleet --version")
  end
end
