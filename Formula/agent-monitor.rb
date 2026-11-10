class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.504.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.504.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "55a5a389ff0ffc9fbc3f814a54ef6ba29efa7abb85e9fbdb275b14bb39a511e9"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.504.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "7c72254ce36516f90c727194da2956ee97df0af6714c3271156750f4655b0e97"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.504.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "1e0c50aa95fe5058ca113fbd6e22b83a9346936838552a7109b42cf5e2cbcfb4"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.504.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "8a8ab45e125ebdc03615098cea0ec9864767e66d5ec0667db805e82235757595"
    end
  end

  def install
    bin.install "agent-monitor"
  end

  test do
    assert_match "agent-monitor", shell_output("#{bin}/agent-monitor --help")
  end
end
