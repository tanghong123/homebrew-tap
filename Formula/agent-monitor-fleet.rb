class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.547.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.547.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "081a6a1078abcfc18acb5d8908c0705a528cc47fe0ef4287e38fafc1eb5bbc27"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.547.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "938cea87d22eb548c5583b65bb517f7f4e475bc279e58aa2d20bfa3f956fc449"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.547.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "22898e9dda46148d2f51e0c8a6aeba9d9236f8d48cbc84b8813652fda186b319"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.547.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "70cb560f517d0016498a7defb5b8fe074cad70f9c0c4987ad91262a1e4609ad3"
    end
  end

  def install
    bin.install "agent-monitor-fleet"
  end

  test do
    assert_match "agent-monitor-fleet #{version}", shell_output("#{bin}/agent-monitor-fleet --version")
  end
end
