class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.448.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.448.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "2cfcbc8533d8b0930069c5b8195b2872a23a48e73edd7f6933ed0247faf2fb47"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.448.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "6127cbf129377d8c1208de72c48c9722816138b8581c86cb74d0c318b382f170"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.448.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "7638a31dab93df97c48cb322d5cd129c979cc7521889b57f366a3b80c0208e26"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.448.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "4f32dab252a059ce5c20a03a5eb8bab70c465036948153f6b4beacd33fd4eeec"
    end
  end

  def install
    bin.install "agent-monitor"
    bin.install_symlink bin/"agent-monitor" => "claude-monitor"
  end

  test do
    assert_match "agent-monitor", shell_output("#{bin}/agent-monitor --help")
  end
end
