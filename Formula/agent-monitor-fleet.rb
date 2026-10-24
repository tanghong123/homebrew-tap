class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.417.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.417.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "4eaa2b68a339e8e42de1cd776cb75c314875fcb7e363663fbfdd34469fa46d14"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.417.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "d459c6472eda2da82ba2dadeaedf2dc66da7c4c8518c0b89f4a9c0a52f58680a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.417.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "975ecd8a19924c4751f4bb264b1695769b6dee334bdbdaf9574ce92cc2d6129e"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.417.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "03f43646acc23f7972a77481227f9fc58e0fa863ac52d20eb5c5191abbddf508"
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
