-- Carrega o script principal com o novo nome no URL
loadstring(game:HttpGet("https://raw.githubusercontent.com/ominixseven/Scripts/main/MainLoader.lua"))()

-- Função para teletransportar o jogador para uma posição específica
function teleportTo(position)
    local player = game.Players.LocalPlayer
    if player and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
        player.Character.HumanoidRootPart.CFrame = CFrame.new(position)
    end
end

-- Exemplo de uso: teletransportar para as coordenadas (0, 50, 0)
teleportTo(Vector3.new(0, 50, 0))

-- Função para mudar a velocidade do jogador
function setSpeed(speed)
    local player = game.Players.LocalPlayer
    if player and player.Character and player.Character:FindFirstChild("Humanoid") then
        player.Character.Humanoid.WalkSpeed = speed
    end
end

-- Exemplo de uso: definir a velocidade para 100
setSpeed(150)

-- Função para mudar a gravidade do jogo
function setGravity(gravity)
    game.Workspace.Gravity = gravity
end

-- Exemplo de uso: definir a gravidade para 50
setGravity(50)
