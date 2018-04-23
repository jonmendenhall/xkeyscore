.class public abstract Lcom/intermedia/model/HQUser;
.super Ljava/lang/Object;
.source "HQUser.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Lcom/intermedia/libs/AutoGson;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/intermedia/model/HQUser$Builder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static builder()Lcom/intermedia/model/HQUser$Builder;
    .locals 1

    .line 51
    new-instance v0, Lcom/intermedia/model/AutoParcel_HQUser$Builder;

    invoke-direct {v0}, Lcom/intermedia/model/AutoParcel_HQUser$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public abstract avatarUrl()Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end method

.method public abstract blocked()Z
.end method

.method public abstract blocksMe()Z
.end method

.method public abstract deviceTokens()Ljava/util/List;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract gamesPlayed()I
.end method

.method public abstract highScore()I
.end method

.method public abstract leaderboard()Lcom/intermedia/model/Leaderboard;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end method

.method public abstract lives()J
.end method

.method public abstract referred()Ljava/lang/Boolean;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end method

.method public abstract referringUserId()Ljava/lang/Long;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end method

.method public abstract refreshDeviceToken()Z
.end method

.method public abstract stk()Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end method

.method public abstract toBuilder()Lcom/intermedia/model/HQUser$Builder;
.end method

.method public abstract userId()J
.end method

.method public abstract username()Ljava/lang/String;
.end method

.method public abstract winCount()I
.end method
