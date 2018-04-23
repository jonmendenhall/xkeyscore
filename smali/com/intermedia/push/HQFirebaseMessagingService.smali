.class public final Lcom/intermedia/push/HQFirebaseMessagingService;
.super Lcom/google/firebase/messaging/FirebaseMessagingService;
.source "HQFirebaseMessagingService.java"


# static fields
.field public static final MAIN_ACTIVITY_REQUEST_CODE:I = 0x0

.field public static final PLAY_STORE_REQUEST_CODE:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/google/firebase/messaging/FirebaseMessagingService;-><init>()V

    return-void
.end method

.method private createNotificationBuilder(Ljava/lang/String;)Landroid/app/Notification$Builder;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 108
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 109
    invoke-direct {p0}, Lcom/intermedia/push/HQFirebaseMessagingService;->createNotificationChannels()V

    .line 110
    new-instance v0, Landroid/app/Notification$Builder;

    invoke-static {p1}, Lcom/intermedia/push/NotificationChannelId;->getChannelIdForType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0

    .line 113
    :cond_0
    new-instance p1, Landroid/app/Notification$Builder;

    invoke-direct {p1, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x2

    .line 114
    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object p1

    const/4 v0, -0x1

    .line 115
    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object p1

    return-object p1
.end method

.method private createNotificationChannels()V
    .locals 7
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x1a
    .end annotation

    const-string v0, "notification"

    .line 129
    invoke-virtual {p0, v0}, Lcom/intermedia/push/HQFirebaseMessagingService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/intermedia/util/ObjectUtils;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const/4 v1, 0x3

    .line 130
    new-array v2, v1, [Landroid/app/NotificationChannel;

    new-instance v3, Landroid/app/NotificationChannel;

    const-string v4, "extra_life"

    const v5, 0x7f110142

    .line 132
    invoke-virtual {p0, v5}, Lcom/intermedia/push/HQFirebaseMessagingService;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5, v1}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-instance v3, Landroid/app/NotificationChannel;

    const-string v4, "show_time"

    const v5, 0x7f110143

    .line 136
    invoke-virtual {p0, v5}, Lcom/intermedia/push/HQFirebaseMessagingService;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x4

    invoke-direct {v3, v4, v5, v6}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const/4 v4, 0x1

    aput-object v3, v2, v4

    new-instance v3, Landroid/app/NotificationChannel;

    const-string v4, "uncategorized"

    const v5, 0x7f110144

    .line 140
    invoke-virtual {p0, v5}, Lcom/intermedia/push/HQFirebaseMessagingService;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5, v1}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const/4 v1, 0x2

    aput-object v3, v2, v1

    .line 130
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->createNotificationChannels(Ljava/util/List;)V

    return-void
.end method

.method private pendingIntentFromType(Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 5
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 52
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const v2, -0x7091a1f3

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "playStore"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, -0x1

    :goto_1
    const/high16 v2, 0x8000000

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    .line 57
    new-instance v0, Landroid/content/Intent;

    const-class v4, Lcom/intermedia/MainActivity;

    invoke-direct {v0, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v4, 0x4000000

    .line 58
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v4, "from_push"

    .line 59
    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v3, "push_type"

    .line 60
    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 61
    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1

    .line 55
    :cond_2
    invoke-static {p0}, Lcom/intermedia/util/PlayStoreUtils;->playStoreIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    .line 54
    invoke-static {p0, v3, p1, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method private showNotification(Ljava/util/Map;I)V
    .locals 6
    .param p1    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    const-string v0, "silent"

    .line 74
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 76
    invoke-virtual {p0}, Lcom/intermedia/push/HQFirebaseMessagingService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0002

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    const-string v2, "contentText"

    .line 77
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "contentTitle"

    .line 78
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 79
    invoke-virtual {p0}, Lcom/intermedia/push/HQFirebaseMessagingService;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {p0}, Lcom/intermedia/push/HQFirebaseMessagingService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->labelRes:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 78
    invoke-static {v3, v4}, Lcom/intermedia/util/StringUtils;->defaultIfEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "type"

    .line 81
    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v4, "uncategorized"

    invoke-static {p1, v4}, Lcom/intermedia/util/NullableUtils;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const/4 v4, 0x2

    .line 83
    invoke-static {v4}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v4

    .line 85
    invoke-direct {p0, p1}, Lcom/intermedia/push/HQFirebaseMessagingService;->createNotificationBuilder(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 87
    invoke-virtual {v5, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 88
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 89
    invoke-virtual {v2, v1}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    move-result-object v1

    const v2, 0x7f0800da

    .line 90
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v1

    const/4 v2, 0x1

    .line 91
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 92
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 93
    invoke-virtual {v1, v4}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    move-result-object v1

    new-instance v2, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v2}, Landroid/app/Notification$BigTextStyle;-><init>()V

    .line 94
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 95
    invoke-direct {p0, p1}, Lcom/intermedia/push/HQFirebaseMessagingService;->pendingIntentFromType(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    const-string p1, "notification"

    .line 98
    invoke-virtual {p0, p1}, Lcom/intermedia/push/HQFirebaseMessagingService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/intermedia/util/ObjectUtils;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    if-nez v0, :cond_0

    .line 101
    invoke-virtual {v5}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 102
    invoke-static {}, Lcom/intermedia/push/PushEventReporter;->reportDisplayed()V

    :cond_0
    return-void
.end method


# virtual methods
.method public onMessageReceived(Lcom/google/firebase/messaging/RemoteMessage;)V
    .locals 1
    .param p1    # Lcom/google/firebase/messaging/RemoteMessage;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 42
    invoke-super {p0, p1}, Lcom/google/firebase/messaging/FirebaseMessagingService;->onMessageReceived(Lcom/google/firebase/messaging/RemoteMessage;)V

    .line 43
    invoke-static {}, Lcom/intermedia/injection/AppObjectGraph;->isSet()Z

    move-result v0

    invoke-static {p1, v0}, Lcom/intermedia/push/PushEventReporter;->reportPushReceived(Lcom/google/firebase/messaging/RemoteMessage;Z)V

    .line 44
    invoke-static {p0}, Landroid/support/v4/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroid/support/v4/app/NotificationManagerCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/NotificationManagerCompat;->areNotificationsEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 45
    invoke-static {}, Lcom/intermedia/push/PushEventReporter;->reportDisabled()V

    .line 48
    :cond_0
    invoke-virtual {p1}, Lcom/google/firebase/messaging/RemoteMessage;->getData()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/intermedia/push/HQFirebaseMessagingService;->showNotification(Ljava/util/Map;I)V

    return-void
.end method
