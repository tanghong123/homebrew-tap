class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.358.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.358.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "d6d01b41a4e0e23ce5a53625df522b3a85d8405049191e95b731d228c454545b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.358.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "d5fac24e879cbab2be1e193de408f3c70a5c9020bcbe85f2f0f4daa149ed8cf0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.358.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "666071ed40fbc744f12f60b6536315c2398413496f4af3a4ffa1d2a42e0067d3"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.358.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "dcf31565c5efa78f0fffb6ca1cc45ad696a01f7362dd352998207f9b241e50de"
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
