import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'party_model.dart';

class PartySummary extends StatelessWidget {
  const PartySummary({super.key});

  @override
  Widget build(BuildContext context) {
    final partyModel = context.watch<PartyModel>();

    return Card(
      margin: const EdgeInsets.all(12),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Quest Party Summary',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Text('Party Members: ${partyModel.partyCount}'),
            Text('Total Gold Cost: ${partyModel.totalCost} Gold'),
            const SizedBox(height: 8),
            if (partyModel.party.isEmpty)
              const Text('No adventurers recruited yet.')
            else
              ...partyModel.party.map(
                (adventurer) => ListTile(
                  contentPadding: EdgeInsets.zero,
                  title: Text(adventurer.name),
                  subtitle: Text(adventurer.role),
                  trailing: IconButton(
                    icon: const Icon(Icons.remove_circle_outline),
                    onPressed: () {
                      partyModel.removeAdventurer(adventurer);
                    },
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
