class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.361.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.361.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "b246254dba06b5875c780a92b58562f7412e6e5788f07620fefe7924b39d1881"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.361.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "685239821145253911801ac4f163becc60b5feeb5803e3add28b54dfa76ecdb2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.361.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "92f61f488e4674136bdbedc2199ded2626ab6e861fa2434ff5c62cd6cbbe48ab"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.361.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "8301bbe23243a4816a8590e0d405081f42df6c2acf9b8ef9b63b4d1b5f0950a1"
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
