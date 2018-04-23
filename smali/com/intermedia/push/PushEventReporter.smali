.class public abstract Lcom/intermedia/push/PushEventReporter;
.super Ljava/lang/Object;
.source "PushEventReporter.java"


# static fields
.field private static final sReporter:Lcom/intermedia/util/analytics/ClientEventReporter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    invoke-static {}, Lcom/intermedia/util/analytics/ClientEventReporter;->get()Lcom/intermedia/util/analytics/ClientEventReporter;

    move-result-object v0

    sput-object v0, Lcom/intermedia/push/PushEventReporter;->sReporter:Lcom/intermedia/util/analytics/ClientEventReporter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static reportDisabled()V
    .locals 2

    .line 52
    sget-object v0, Lcom/intermedia/push/PushEventReporter;->sReporter:Lcom/intermedia/util/analytics/ClientEventReporter;

    const-string v1, "push_declined"

    invoke-virtual {v0, v1}, Lcom/intermedia/util/analytics/ClientEventReporter;->log(Ljava/lang/String;)V

    return-void
.end method

.method public static reportDisplayed()V
    .locals 2

    .line 48
    sget-object v0, Lcom/intermedia/push/PushEventReporter;->sReporter:Lcom/intermedia/util/analytics/ClientEventReporter;

    const-string v1, "push_displayed"

    invoke-virtual {v0, v1}, Lcom/intermedia/util/analytics/ClientEventReporter;->log(Ljava/lang/String;)V

    return-void
.end method

.method public static reportOpen(Ljava/lang/String;)V
    .locals 5
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 25
    sget-object v0, Lcom/intermedia/push/PushEventReporter;->sReporter:Lcom/intermedia/util/analytics/ClientEventReporter;

    const-string v1, "app_openedPush"

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/util/Pair;

    new-instance v3, Landroid/util/Pair;

    const-string v4, "type"

    .line 26
    invoke-static {p0}, Lcom/intermedia/util/StringUtils;->emptyIfNull(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-direct {v3, v4, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p0, 0x0

    aput-object v3, v2, p0

    .line 25
    invoke-virtual {v0, v1, v2}, Lcom/intermedia/util/analytics/ClientEventReporter;->log(Ljava/lang/String;[Landroid/util/Pair;)V

    return-void
.end method

.method public static reportPushReceived(Lcom/google/firebase/messaging/RemoteMessage;Z)V
    .locals 5
    .param p0    # Lcom/google/firebase/messaging/RemoteMessage;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 17
    sget-object v0, Lcom/intermedia/push/PushEventReporter;->sReporter:Lcom/intermedia/util/analytics/ClientEventReporter;

    const-string v1, "app_pushReceived"

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/util/Pair;

    const-string v3, "type"

    .line 19
    invoke-virtual {p0}, Lcom/google/firebase/messaging/RemoteMessage;->getData()Ljava/util/Map;

    move-result-object p0

    const-string v4, "type"

    invoke-interface {p0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    invoke-static {p0}, Lcom/intermedia/util/StringUtils;->emptyIfNull(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    .line 18
    invoke-static {v3, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const-string p0, "objectGraphIsAvailable"

    .line 20
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    const/4 p1, 0x1

    aput-object p0, v2, p1

    .line 17
    invoke-virtual {v0, v1, v2}, Lcom/intermedia/util/analytics/ClientEventReporter;->log(Ljava/lang/String;[Landroid/util/Pair;)V

    return-void
.end method

.method public static reportTokenRefresh(Z)V
    .locals 5

    .line 31
    sget-object v0, Lcom/intermedia/push/PushEventReporter;->sReporter:Lcom/intermedia/util/analytics/ClientEventReporter;

    const-string v1, "push_tokenReceived"

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/util/Pair;

    new-instance v3, Landroid/util/Pair;

    const-string v4, "isFirstToken"

    .line 32
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-direct {v3, v4, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p0, 0x0

    aput-object v3, v2, p0

    .line 31
    invoke-virtual {v0, v1, v2}, Lcom/intermedia/util/analytics/ClientEventReporter;->log(Ljava/lang/String;[Landroid/util/Pair;)V

    return-void
.end method

.method public static reportTokenRefreshInvalid()V
    .locals 2

    .line 36
    sget-object v0, Lcom/intermedia/push/PushEventReporter;->sReporter:Lcom/intermedia/util/analytics/ClientEventReporter;

    const-string v1, "push_tokenReceivedInvalid"

    invoke-virtual {v0, v1}, Lcom/intermedia/util/analytics/ClientEventReporter;->log(Ljava/lang/String;)V

    return-void
.end method

.method public static reportTokenUpload()V
    .locals 2

    .line 40
    sget-object v0, Lcom/intermedia/push/PushEventReporter;->sReporter:Lcom/intermedia/util/analytics/ClientEventReporter;

    const-string v1, "push_upload"

    invoke-virtual {v0, v1}, Lcom/intermedia/util/analytics/ClientEventReporter;->log(Ljava/lang/String;)V

    return-void
.end method

.method public static reportTokenUploadFailed()V
    .locals 2

    .line 44
    sget-object v0, Lcom/intermedia/push/PushEventReporter;->sReporter:Lcom/intermedia/util/analytics/ClientEventReporter;

    const-string v1, "push_uploadFailed"

    invoke-virtual {v0, v1}, Lcom/intermedia/util/analytics/ClientEventReporter;->log(Ljava/lang/String;)V

    return-void
.end method
