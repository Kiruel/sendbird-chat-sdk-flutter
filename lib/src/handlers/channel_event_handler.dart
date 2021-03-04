import 'event_manager.dart';

import '../constant/enums.dart';
import '../channel/base_channel.dart';
import '../channel/group_channel.dart';
import '../channel/open_channel.dart';
import '../events/reaction_event.dart';
import '../events/thread_info_update_event.dart';
import '../message/base_message.dart';
import '../models/user.dart';

/// Represents a class to notify various channel event.
///
/// This is base class that you can mixin, so that you can register on
/// [SendbirdSdk.addChannelHandler]. Typically you want to use this class as
/// following:
///
/// ```
/// class MyHandler with ChannelEventHandler {
///   @override
///   void onMessageReceived(BaseChannel channel, BaseMessage message) {
///      //user logic here when new message is arrived
///   }
///   ...
/// }
/// ```
class ChannelEventHandler implements EventHandler {
  /// Informs when a message is received, with given
  /// [channel] and [message] object
  void onMessageReceived(BaseChannel channel, BaseMessage message) {}

  /// Informs when a message is updated, with given
  /// [channel] and [message] object
  void onMessageUpdated(BaseChannel channel, BaseMessage message) {}

  /// Informs when someone mentioned a speicific user,
  /// with given [channel] and [message] object
  void onMentionReceived(BaseChannel channel, BaseMessage message) {}

  /// Infomrs when a message with `messageId` has been deleted from [channel]
  void onMessageDeleted(BaseChannel channel, int messageId) {}

  /// Informs when read receipts get updated with
  /// given group [channel]
  void onReadReceiptUpdated(GroupChannel channel) {}

  /// Informs when delivery receipts get updated with
  /// given group[channel]
  void onDeliveryReceiptUpdated(GroupChannel channel) {}

  /// Informs when a user sends typing status in
  /// group [channel]
  void onTypingStatusUpdated(GroupChannel channel) {}

  /// Informs when users are invited by [inviter]
  void onUserReceivedInvitation(
      GroupChannel channel, List<User> invitees, User inviter) {}

  /// Informs when a user declined invitation from [inviter]
  void onUserDeclinedInvitation(
      GroupChannel channel, User invitee, User inviter) {}

  /// Informs when a [user] joined to group [channel]
  void onUserJoined(GroupChannel channel, User user) {}

  /// Informs when a [user] leaved from group [channel]
  void onUserLeaved(GroupChannel channel, User user) {}

  /// Informs when a [user] entered to open [channel]
  void onUserEntered(OpenChannel channel, User user) {}

  /// Informs when a [user] exited from open [channel]
  void onUserExited(OpenChannel channel, User user) {}

  /// Informs when a [user] get muted in [channel]
  void onUserMuted(BaseChannel channel, User user) {}

  /// Informs when a [user] get unmuted in [channel]
  void onUserUnmuted(BaseChannel channel, User user) {}

  /// Informs when a [user] get banned from [channel]
  void onUserBanned(BaseChannel channel, User user) {}

  /// Informs when a [user] get unbanned from [channel]
  void onUserUnbanned(BaseChannel channel, User user) {}

  /// Informs when a [channel] has been changed
  void onChannelChanged(BaseChannel channel) {}

  /// Informs when broadcast channel's member count has been updated
  void onChannelMemberCountChanged(List<GroupChannel> channels) {}

  /// Informs when open channel's member count has been updated
  void onChannelParticipantCountChanged(List<OpenChannel> channels) {}

  /// Informs when a [channel] has been hidden
  void onChannelHidden(BaseChannel channel) {}

  /// Informs when an channel was deleted, and give
  /// information `channelUrl` and [channelType]
  void onChannelDeleted(String channelUrl, ChannelType channelType) {}

  /// Informs when a [channel] has been frozen
  void onChannelFrozen(BaseChannel channel) {}

  /// Informs when a [channel] has been unfrozen
  void onChannelUnfrozen(BaseChannel channel) {}

  /// Informs when operators has been updated on [channel]
  void onChannelOperatorsUpdated(BaseChannel channel) {}

  /// Informs when `metaData` has been created on [channel]
  void onChannelMetaDataCreated(
      BaseChannel channel, Map<String, String> metaData) {}

  /// Informs when `metaData` has been updated on [channel]
  void onChannelMetaDataUpdated(
      BaseChannel channel, Map<String, String> metaData) {}

  /// Informs when metaData with `metaDataKeys` has been deleted on [channel]
  void onChannelMetaDataDeleted(
      BaseChannel channel, List<String> metaDataKeys) {}

  /// Informs when `metaCounters` has been created on [channel]
  void onChannelMetaCountersCreated(
      BaseChannel channel, Map<String, int> metaCounters) {}

  /// Informs when `metaCounters` has been updated on [channel]
  void onChannelMetaCountersUpdated(
      BaseChannel channel, Map<String, int> metaCounters) {}

  /// Informs when a meta counter with `metaCounterKeys` has been deleted on [channel]
  void onChannelMetaCountersDeleted(
      BaseChannel channel, List<String> metaCounterKeys) {}

  /// Informs when an reaction [event] happens on [channel]
  void onReactionUpdated(BaseChannel channel, ReactionEvent event) {}

  /// Informs when a thread info [event] has been updated on [channel]
  void onThreadInfoUpdated(BaseChannel channel, ThreadInfoUpdateEvent event) {}
}