.class public final Lcom/intermedia/util/logging/events/Connectivity$Disconnected;
.super Lcom/intermedia/util/logging/events/Connectivity;
.source "Connectivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intermedia/util/logging/events/Connectivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Disconnected"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "Lcom/intermedia/util/logging/events/Connectivity$Disconnected;",
        "Lcom/intermedia/util/logging/events/Connectivity;",
        "()V",
        "app_externalRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x9
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "NetworkConnectivityManager"

    const/4 v1, 0x0

    .line 5
    invoke-direct {p0, v0, v1}, Lcom/intermedia/util/logging/events/Connectivity;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
