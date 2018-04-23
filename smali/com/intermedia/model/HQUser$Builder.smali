.class public abstract Lcom/intermedia/model/HQUser$Builder;
.super Ljava/lang/Object;
.source "HQUser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intermedia/model/HQUser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract avatarUrl(Ljava/lang/String;)Lcom/intermedia/model/HQUser$Builder;
.end method

.method public abstract blocked(Z)Lcom/intermedia/model/HQUser$Builder;
.end method

.method public abstract blocksMe(Z)Lcom/intermedia/model/HQUser$Builder;
.end method

.method public abstract build()Lcom/intermedia/model/HQUser;
.end method

.method public abstract deviceTokens(Ljava/util/List;)Lcom/intermedia/model/HQUser$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/intermedia/model/HQUser$Builder;"
        }
    .end annotation
.end method

.method public abstract gamesPlayed(I)Lcom/intermedia/model/HQUser$Builder;
.end method

.method public abstract highScore(I)Lcom/intermedia/model/HQUser$Builder;
.end method

.method public abstract leaderboard(Lcom/intermedia/model/Leaderboard;)Lcom/intermedia/model/HQUser$Builder;
.end method

.method public abstract lives(J)Lcom/intermedia/model/HQUser$Builder;
.end method

.method public abstract referred(Ljava/lang/Boolean;)Lcom/intermedia/model/HQUser$Builder;
.end method

.method public abstract referringUserId(Ljava/lang/Long;)Lcom/intermedia/model/HQUser$Builder;
.end method

.method public abstract refreshDeviceToken(Z)Lcom/intermedia/model/HQUser$Builder;
.end method

.method public abstract stk(Ljava/lang/String;)Lcom/intermedia/model/HQUser$Builder;
.end method

.method public abstract userId(J)Lcom/intermedia/model/HQUser$Builder;
.end method

.method public abstract username(Ljava/lang/String;)Lcom/intermedia/model/HQUser$Builder;
.end method

.method public abstract winCount(I)Lcom/intermedia/model/HQUser$Builder;
.end method
