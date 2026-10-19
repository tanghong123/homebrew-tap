class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.394.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.394.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "a77d50ea78c2f4a4cb0d6b9284f051b1d5bfa75e587edc5f9605a24f8bd16372"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.394.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "71111a7aa3e216617a8b3ce078239ca71845585673e15228af4ab1dfa42ddce5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.394.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "38ecaccbc0103f8fcec131e4dfdcd154dd9afc30f64d63cd97e9bdbbcf4a3ff8"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.394.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "1df9a051ac1a7fa4fcebf216d1213b537f1e05b6de89e9be91225da5e227ce89"
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
