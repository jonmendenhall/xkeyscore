.class public Lcom/intermedia/model/ShowTime;
.super Ljava/lang/Object;
.source "ShowTime.java"


# instance fields
.field private active:Z

.field private atCapacity:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private broadcast:Lcom/intermedia/model/Broadcast;

.field private broadcastFull:Z

.field public gameKey:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private nextShowPrize:Ljava/lang/String;

.field private nextShowTime:Ljava/lang/String;

.field private prize:Ljava/lang/String;

.field private showId:Ljava/lang/String;

.field private showType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private nextShowDateTime()Lorg/joda/time/DateTime;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 52
    sget-object v0, Lcom/intermedia/util/DateTimeUtils;->INSTANCE:Lcom/intermedia/util/DateTimeUtils;

    iget-object v1, p0, Lcom/intermedia/model/ShowTime;->nextShowTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/intermedia/util/DateTimeUtils;->utcFromISO8601String(Ljava/lang/String;)Lorg/joda/time/DateTime;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 23
    instance-of p1, p1, Lcom/intermedia/model/ShowTime;

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 23
    :cond_0
    instance-of v1, p1, Lcom/intermedia/model/ShowTime;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/intermedia/model/ShowTime;

    invoke-virtual {p1, p0}, Lcom/intermedia/model/ShowTime;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/intermedia/model/ShowTime;->isActive()Z

    move-result v1

    invoke-virtual {p1}, Lcom/intermedia/model/ShowTime;->isActive()Z

    move-result v3

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    invoke-virtual {p0}, Lcom/intermedia/model/ShowTime;->getGameKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/intermedia/model/ShowTime;->getGameKey()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_4

    if-eqz v3, :cond_5

    goto :goto_0

    :cond_4
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    :goto_0
    return v2

    :cond_5
    invoke-virtual {p0}, Lcom/intermedia/model/ShowTime;->getShowId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/intermedia/model/ShowTime;->getShowId()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_6

    if-eqz v3, :cond_7

    goto :goto_1

    :cond_6
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    :goto_1
    return v2

    :cond_7
    invoke-virtual {p0}, Lcom/intermedia/model/ShowTime;->getShowType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/intermedia/model/ShowTime;->getShowType()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_8

    if-eqz v3, :cond_9

    goto :goto_2

    :cond_8
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    :goto_2
    return v2

    :cond_9
    invoke-virtual {p0}, Lcom/intermedia/model/ShowTime;->getNextShowTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/intermedia/model/ShowTime;->getNextShowTime()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_a

    if-eqz v3, :cond_b

    goto :goto_3

    :cond_a
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    :goto_3
    return v2

    :cond_b
    invoke-virtual {p0}, Lcom/intermedia/model/ShowTime;->getNextShowPrize()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/intermedia/model/ShowTime;->getNextShowPrize()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_c

    if-eqz v3, :cond_d

    goto :goto_4

    :cond_c
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    :goto_4
    return v2

    :cond_d
    invoke-virtual {p0}, Lcom/intermedia/model/ShowTime;->getBroadcast()Lcom/intermedia/model/Broadcast;

    move-result-object v1

    invoke-virtual {p1}, Lcom/intermedia/model/ShowTime;->getBroadcast()Lcom/intermedia/model/Broadcast;

    move-result-object v3

    if-nez v1, :cond_e

    if-eqz v3, :cond_f

    goto :goto_5

    :cond_e
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    :goto_5
    return v2

    :cond_f
    invoke-virtual {p0}, Lcom/intermedia/model/ShowTime;->getPrize()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/intermedia/model/ShowTime;->getPrize()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_10

    if-eqz v3, :cond_11

    goto :goto_6

    :cond_10
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    :goto_6
    return v2

    :cond_11
    invoke-virtual {p0}, Lcom/intermedia/model/ShowTime;->isAtCapacity()Z

    move-result v1

    invoke-virtual {p1}, Lcom/intermedia/model/ShowTime;->isAtCapacity()Z

    move-result v3

    if-eq v1, v3, :cond_12

    return v2

    :cond_12
    invoke-virtual {p0}, Lcom/intermedia/model/ShowTime;->isBroadcastFull()Z

    move-result v1

    invoke-virtual {p1}, Lcom/intermedia/model/ShowTime;->isBroadcastFull()Z

    move-result p1

    if-eq v1, p1, :cond_13

    return v2

    :cond_13
    return v0
.end method

.method public formattedShowTime()Ljava/lang/String;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 39
    sget-object v0, Lcom/intermedia/util/DateTimeUtils;->INSTANCE:Lcom/intermedia/util/DateTimeUtils;

    invoke-direct {p0}, Lcom/intermedia/model/ShowTime;->nextShowDateTime()Lorg/joda/time/DateTime;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/intermedia/util/DateTimeUtils;->formattedShowTime(Lorg/joda/time/DateTime;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBroadcast()Lcom/intermedia/model/Broadcast;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/intermedia/model/ShowTime;->broadcast:Lcom/intermedia/model/Broadcast;

    return-object v0
.end method

.method public getGameKey()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/intermedia/model/ShowTime;->gameKey:Ljava/lang/String;

    return-object v0
.end method

.method public getNextShowPrize()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/intermedia/model/ShowTime;->nextShowPrize:Ljava/lang/String;

    return-object v0
.end method

.method public getNextShowTime()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/intermedia/model/ShowTime;->nextShowTime:Ljava/lang/String;

    return-object v0
.end method

.method public getPrize()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/intermedia/model/ShowTime;->prize:Ljava/lang/String;

    return-object v0
.end method

.method public getShowId()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/intermedia/model/ShowTime;->showId:Ljava/lang/String;

    return-object v0
.end method

.method public getShowType()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/intermedia/model/ShowTime;->showType:Ljava/lang/String;

    return-object v0
.end method

.method public hasNextShowScheduled()Z
    .locals 1

    .line 43
    invoke-virtual {p0}, Lcom/intermedia/model/ShowTime;->getNextShowTime()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intermedia/util/NullableUtils;->isNonNull(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 6

    .line 23
    invoke-virtual {p0}, Lcom/intermedia/model/ShowTime;->isActive()Z

    move-result v0

    const/16 v1, 0x61

    const/16 v2, 0x4f

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const/16 v3, 0x3b

    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/intermedia/model/ShowTime;->getGameKey()Ljava/lang/String;

    move-result-object v4

    mul-int/2addr v0, v3

    const/16 v5, 0x2b

    if-nez v4, :cond_1

    move v4, v5

    goto :goto_1

    :cond_1
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    :goto_1
    add-int/2addr v0, v4

    invoke-virtual {p0}, Lcom/intermedia/model/ShowTime;->getShowId()Ljava/lang/String;

    move-result-object v4

    mul-int/2addr v0, v3

    if-nez v4, :cond_2

    move v4, v5

    goto :goto_2

    :cond_2
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    :goto_2
    add-int/2addr v0, v4

    invoke-virtual {p0}, Lcom/intermedia/model/ShowTime;->getShowType()Ljava/lang/String;

    move-result-object v4

    mul-int/2addr v0, v3

    if-nez v4, :cond_3

    move v4, v5

    goto :goto_3

    :cond_3
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    :goto_3
    add-int/2addr v0, v4

    invoke-virtual {p0}, Lcom/intermedia/model/ShowTime;->getNextShowTime()Ljava/lang/String;

    move-result-object v4

    mul-int/2addr v0, v3

    if-nez v4, :cond_4

    move v4, v5

    goto :goto_4

    :cond_4
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    :goto_4
    add-int/2addr v0, v4

    invoke-virtual {p0}, Lcom/intermedia/model/ShowTime;->getNextShowPrize()Ljava/lang/String;

    move-result-object v4

    mul-int/2addr v0, v3

    if-nez v4, :cond_5

    move v4, v5

    goto :goto_5

    :cond_5
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    :goto_5
    add-int/2addr v0, v4

    invoke-virtual {p0}, Lcom/intermedia/model/ShowTime;->getBroadcast()Lcom/intermedia/model/Broadcast;

    move-result-object v4

    mul-int/2addr v0, v3

    if-nez v4, :cond_6

    move v4, v5

    goto :goto_6

    :cond_6
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    :goto_6
    add-int/2addr v0, v4

    invoke-virtual {p0}, Lcom/intermedia/model/ShowTime;->getPrize()Ljava/lang/String;

    move-result-object v4

    mul-int/2addr v0, v3

    if-nez v4, :cond_7

    goto :goto_7

    :cond_7
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v5

    :goto_7
    add-int/2addr v0, v5

    mul-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/intermedia/model/ShowTime;->isAtCapacity()Z

    move-result v4

    if-eqz v4, :cond_8

    move v4, v2

    goto :goto_8

    :cond_8
    move v4, v1

    :goto_8
    add-int/2addr v0, v4

    mul-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/intermedia/model/ShowTime;->isBroadcastFull()Z

    move-result v3

    if-eqz v3, :cond_9

    move v1, v2

    :cond_9
    add-int/2addr v0, v1

    return v0
.end method

.method public isActive()Z
    .locals 1

    .line 25
    iget-boolean v0, p0, Lcom/intermedia/model/ShowTime;->active:Z

    return v0
.end method

.method public isAtCapacity()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 33
    iget-boolean v0, p0, Lcom/intermedia/model/ShowTime;->atCapacity:Z

    return v0
.end method

.method public isBroadcastFull()Z
    .locals 1

    .line 34
    iget-boolean v0, p0, Lcom/intermedia/model/ShowTime;->broadcastFull:Z

    return v0
.end method

.method public isLive()Z
    .locals 1

    .line 47
    invoke-virtual {p0}, Lcom/intermedia/model/ShowTime;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/intermedia/model/ShowTime;->getBroadcast()Lcom/intermedia/model/Broadcast;

    move-result-object v0

    invoke-virtual {v0}, Lcom/intermedia/model/Broadcast;->hasEnded()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public selectBroadcast(Landroid/content/SharedPreferences;)Lcom/intermedia/model/Broadcast;
    .locals 3
    .param p1    # Landroid/content/SharedPreferences;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const-string v0, "use_test_broadcast"

    const/4 v1, 0x0

    .line 57
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "use_custom_websocket_url"

    .line 59
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const-string v1, "debug_websocket_url"

    .line 60
    iget-object v2, p0, Lcom/intermedia/model/ShowTime;->broadcast:Lcom/intermedia/model/Broadcast;

    .line 62
    invoke-virtual {v2}, Lcom/intermedia/model/Broadcast;->socketUrl()Ljava/lang/String;

    move-result-object v2

    .line 61
    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 63
    iget-object v1, p0, Lcom/intermedia/model/ShowTime;->broadcast:Lcom/intermedia/model/Broadcast;

    invoke-static {v1, v0, p1}, Lcom/intermedia/model/Broadcast;->toTest(Lcom/intermedia/model/Broadcast;ZLjava/lang/String;)Lcom/intermedia/model/Broadcast;

    move-result-object p1

    return-object p1

    .line 65
    :cond_0
    iget-object p1, p0, Lcom/intermedia/model/ShowTime;->broadcast:Lcom/intermedia/model/Broadcast;

    return-object p1
.end method

.method public setActive(Z)V
    .locals 0

    .line 20
    iput-boolean p1, p0, Lcom/intermedia/model/ShowTime;->active:Z

    return-void
.end method

.method public setAtCapacity(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 20
    iput-boolean p1, p0, Lcom/intermedia/model/ShowTime;->atCapacity:Z

    return-void
.end method

.method public setBroadcast(Lcom/intermedia/model/Broadcast;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/intermedia/model/ShowTime;->broadcast:Lcom/intermedia/model/Broadcast;

    return-void
.end method

.method public setBroadcastFull(Z)V
    .locals 0

    .line 20
    iput-boolean p1, p0, Lcom/intermedia/model/ShowTime;->broadcastFull:Z

    return-void
.end method

.method public setGameKey(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 20
    iput-object p1, p0, Lcom/intermedia/model/ShowTime;->gameKey:Ljava/lang/String;

    return-void
.end method

.method public setNextShowPrize(Ljava/lang/String;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/intermedia/model/ShowTime;->nextShowPrize:Ljava/lang/String;

    return-void
.end method

.method public setNextShowTime(Ljava/lang/String;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/intermedia/model/ShowTime;->nextShowTime:Ljava/lang/String;

    return-void
.end method

.method public setPrize(Ljava/lang/String;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/intermedia/model/ShowTime;->prize:Ljava/lang/String;

    return-void
.end method

.method public setShowId(Ljava/lang/String;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/intermedia/model/ShowTime;->showId:Ljava/lang/String;

    return-void
.end method

.method public setShowType(Ljava/lang/String;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/intermedia/model/ShowTime;->showType:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ShowTime(active="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/intermedia/model/ShowTime;->isActive()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", gameKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/intermedia/model/ShowTime;->getGameKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", showId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/intermedia/model/ShowTime;->getShowId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", showType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/intermedia/model/ShowTime;->getShowType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", nextShowTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/intermedia/model/ShowTime;->getNextShowTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", nextShowPrize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/intermedia/model/ShowTime;->getNextShowPrize()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", broadcast="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/intermedia/model/ShowTime;->getBroadcast()Lcom/intermedia/model/Broadcast;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", prize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/intermedia/model/ShowTime;->getPrize()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", atCapacity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/intermedia/model/ShowTime;->isAtCapacity()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", broadcastFull="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/intermedia/model/ShowTime;->isBroadcastFull()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
