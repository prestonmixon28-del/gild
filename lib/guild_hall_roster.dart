import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'adventurer.dart';
import 'party_model.dart';

class GuildHallRoster extends StatelessWidget {
  GuildHallRoster({super.key});

  final List<Adventurer> availableAdventurers = [
    Adventurer(name: 'Aria Ironheart', role: 'Knight', goldCost: 150),
    Adventurer(name: 'Eldrin Starweaver', role: 'Mage', goldCost: 200),
    Adventurer(name: 'Lyra Swiftfoot', role: 'Rogue', goldCost: 120),
    Adventurer(name: 'Brakka Oakshield', role: 'Paladin', goldCost: 180),
    Adventurer(name: 'Zephyr Whisperwind', role: 'Ranger', goldCost: 140),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: availableAdventurers.length,
      itemBuilder: (context, index) {
        final adventurer = availableAdventurers[index];

        return Card(
          child: ListTile(
            title: Text(adventurer.name),
            subtitle: Text(
              '${adventurer.role} - ${adventurer.goldCost} Gold',
            ),
            trailing: ElevatedButton(
              onPressed: () {
                context.read<PartyModel>().addAdventurer(adventurer);
                print('${adventurer.name} recruited!');
              },
              child: const Text('Recruit'),
            ),
          ),
        );
      },
    );
  }
}
