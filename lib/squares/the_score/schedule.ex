defmodule TheScore.Schedule do
  use HTTPoison.Base

  def get_season_schedule(league) do
    league
    |> _get_schedule
    |> Map.get("current_season")
  end

  def get_current_group(league) do
    get!(league).body["current_group"]
  end

  def get_all_event_ids(league) do
    league
    |> get_season_schedule
    |> Enum.map(&(Map.get(&1, "event_ids")))
    |> List.flatten
  end

  def get_this_week_event_ids(league) do
    league
    |> get_current_group
    |> Map.get("event_ids")
  end

  def process_url(league) do
    "https://api.thescore.com/" <> league <> "/schedule"
  end

  def process_response_body(body) do
    body
    |> Poison.decode!
  end

  defp _get_schedule(league) do
    start()
    get!(league).body
  end
end
