class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.461.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.461.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "26922b0ed8d78da680def1ecc54986a7b6bf665c4c9db5c8e412977aec4b3602"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.461.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "95befe0bf970e89d9ce9be54d34121240a0e535bffe67393634b37346f3ade85"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.461.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c5a62b244bf064135e053cf673fa5c7b26666930d1aab0712ae2456a1dd376c5"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.461.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "5143b286c7717b26fc60f1f9633307a078d863c8de6c42329795e2df21894384"
    end
  end

  def install
    bin.install "agent-monitor-fleet"
  end

  test do
    assert_match "agent-monitor-fleet #{version}", shell_output("#{bin}/agent-monitor-fleet --version")
  end
end
