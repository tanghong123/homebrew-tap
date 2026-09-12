class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.259.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.259.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "524b44ac2f1c13e20784aed8a1c8ece4cefad20138cd411edf480a9f6ad5aca1"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.259.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "42d466af2286f455de982e4f38a9602a8d07703d2d025ed61b03ee55bb0df727"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.259.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "f0536a300cd341c9e4d4b01de491cee63cbb2893a148ba176082358a9f009af5"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.259.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "047f107067507844e56c7c0a74a09a6f10a9b768c37ffe3f75c7fd1db2babf44"
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
