.class abstract Lcom/intermedia/game/GameStreamReporter;
.super Ljava/lang/Object;
.source "GameStreamReporter.java"


# static fields
.field private static final sReporter:Lcom/intermedia/util/analytics/ClientEventReporter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    invoke-static {}, Lcom/intermedia/util/analytics/ClientEventReporter;->get()Lcom/intermedia/util/analytics/ClientEventReporter;

    move-result-object v0

    sput-object v0, Lcom/intermedia/game/GameStreamReporter;->sReporter:Lcom/intermedia/util/analytics/ClientEventReporter;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getNetworkInfoParam()Landroid/util/Pair;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-string v0, "networkInfo"

    .line 38
    invoke-static {}, Lcom/intermedia/injection/AppObjectGraph;->get()Lcom/intermedia/ApplicationComponent;

    move-result-object v1

    invoke-interface {v1}, Lcom/intermedia/ApplicationComponent;->getNetworkConnectivityManager()Lcom/intermedia/network/NetworkConnectivityManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/intermedia/network/NetworkConnectivityManager;->getNetworkInfo()Ljava/lang/String;

    move-result-object v1

    .line 37
    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method static reportConnected(Lcom/intermedia/model/StreamType;)V
    .locals 4
    .param p0    # Lcom/intermedia/model/StreamType;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 16
    sget-object v0, Lcom/intermedia/game/GameStreamReporter;->sReporter:Lcom/intermedia/util/analytics/ClientEventReporter;

    const-string v1, "stream_connected"

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/util/Pair;

    const-string v3, "type"

    .line 17
    invoke-virtual {p0}, Lcom/intermedia/model/StreamType;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {}, Lcom/intermedia/game/GameStreamReporter;->getNetworkInfoParam()Landroid/util/Pair;

    move-result-object p0

    const/4 v3, 0x1

    aput-object p0, v2, v3

    .line 16
    invoke-virtual {v0, v1, v2}, Lcom/intermedia/util/analytics/ClientEventReporter;->log(Ljava/lang/String;[Landroid/util/Pair;)V

    return-void
.end method

.method static reportPlaybackStarted(Lcom/intermedia/model/StreamType;)V
    .locals 4
    .param p0    # Lcom/intermedia/model/StreamType;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 21
    sget-object v0, Lcom/intermedia/game/GameStreamReporter;->sReporter:Lcom/intermedia/util/analytics/ClientEventReporter;

    const-string v1, "stream_playbackStarted"

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/util/Pair;

    const-string v3, "type"

    .line 22
    invoke-virtual {p0}, Lcom/intermedia/model/StreamType;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {}, Lcom/intermedia/game/GameStreamReporter;->getNetworkInfoParam()Landroid/util/Pair;

    move-result-object p0

    const/4 v3, 0x1

    aput-object p0, v2, v3

    .line 21
    invoke-virtual {v0, v1, v2}, Lcom/intermedia/util/analytics/ClientEventReporter;->log(Ljava/lang/String;[Landroid/util/Pair;)V

    return-void
.end method

.method static reportQualityDecrease(Lcom/intermedia/model/StreamType;)V
    .locals 4
    .param p0    # Lcom/intermedia/model/StreamType;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 26
    sget-object v0, Lcom/intermedia/game/GameStreamReporter;->sReporter:Lcom/intermedia/util/analytics/ClientEventReporter;

    const-string v1, "stream_decreaseQuality"

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/util/Pair;

    const-string v3, "type"

    .line 27
    invoke-virtual {p0}, Lcom/intermedia/model/StreamType;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {}, Lcom/intermedia/game/GameStreamReporter;->getNetworkInfoParam()Landroid/util/Pair;

    move-result-object p0

    const/4 v3, 0x1

    aput-object p0, v2, v3

    .line 26
    invoke-virtual {v0, v1, v2}, Lcom/intermedia/util/analytics/ClientEventReporter;->log(Ljava/lang/String;[Landroid/util/Pair;)V

    return-void
.end method

.method static reportQualityIncrease(Lcom/intermedia/model/StreamType;)V
    .locals 4
    .param p0    # Lcom/intermedia/model/StreamType;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 31
    sget-object v0, Lcom/intermedia/game/GameStreamReporter;->sReporter:Lcom/intermedia/util/analytics/ClientEventReporter;

    const-string v1, "stream_increaseQuality"

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/util/Pair;

    const-string v3, "type"

    .line 32
    invoke-virtual {p0}, Lcom/intermedia/model/StreamType;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {}, Lcom/intermedia/game/GameStreamReporter;->getNetworkInfoParam()Landroid/util/Pair;

    move-result-object p0

    const/4 v3, 0x1

    aput-object p0, v2, v3

    .line 31
    invoke-virtual {v0, v1, v2}, Lcom/intermedia/util/analytics/ClientEventReporter;->log(Ljava/lang/String;[Landroid/util/Pair;)V

    return-void
.end method
