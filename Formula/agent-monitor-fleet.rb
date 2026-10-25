class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.424.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.424.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "8b0fb6e5f04c3155737ccd94174eead1071f6763ff1cd1ded14027d7e6d9c094"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.424.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "2b23c1f003d3b3c13f63910561b5c05944191ea82074a381e5bd88c7f7eb4252"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.424.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d23d4f7af36f219e1222d4a25a912797a710030239e521177c9871d3f9ba2caf"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.424.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "20615d8ebb12cfcc41a1efba19d042849efc5495f41b74453d4c8ac4486097bd"
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
