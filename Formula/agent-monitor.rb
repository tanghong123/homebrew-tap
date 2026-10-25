class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.423.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.423.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "a242233c3d346c840b9ae624485d6be8bc2263addaa5c90091217bb61757a929"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.423.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "7491b5cc7acdf8108227958e1cd844626c826f71db0b5bdf7991ec45f322f548"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.423.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "cd4305f4c5c531669a6d45f64aac5f4f50a36eb0edd544e3ccc4f2e01adaf6a4"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.423.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "6b7e0312a71491e9301f5513915bad194910b82922335a6c3fe479f388d1bfd6"
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
