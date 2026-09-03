class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.141.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.141.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "4ab26b97ba9be3714bf4f700362ff607b34d4474bdbba8b80b10b0b8ae0f4c3c"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.141.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "be0a184260724bb700afa98186f911b84129b911f21367ac6bb5caa5c7d39772"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.141.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "1553cd8c9221db998960778eb977888b7c6d52ef33e1f7921e43f99b5640b205"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.141.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a97990bcf460eaede692564c59c1ae4598e0df28a648aef0cc7be37f5dc768ef"
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
