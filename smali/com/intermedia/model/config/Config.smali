.class public abstract Lcom/intermedia/model/config/Config;
.super Ljava/lang/Object;
.source "Config.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Lcom/intermedia/libs/AutoGson;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/intermedia/model/config/Config$MinVersion;,
        Lcom/intermedia/model/config/Config$Builder;
    }
.end annotation


# static fields
.field public static DEFAULT:Lcom/intermedia/model/config/Config;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    invoke-static {}, Lcom/intermedia/model/config/Config;->builder()Lcom/intermedia/model/config/Config$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/intermedia/model/config/Config$Builder;->build()Lcom/intermedia/model/config/Config;

    move-result-object v0

    sput-object v0, Lcom/intermedia/model/config/Config;->DEFAULT:Lcom/intermedia/model/config/Config;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static builder()Lcom/intermedia/model/config/Config$Builder;
    .locals 2

    .line 54
    new-instance v0, Lcom/intermedia/model/config/AutoParcel_Config$Builder;

    invoke-direct {v0}, Lcom/intermedia/model/config/AutoParcel_Config$Builder;-><init>()V

    const/16 v1, 0x1388

    invoke-virtual {v0, v1}, Lcom/intermedia/model/config/AutoParcel_Config$Builder;->elPromptMs(I)Lcom/intermedia/model/config/Config$Builder;

    move-result-object v0

    .line 55
    invoke-static {}, Lcom/intermedia/model/config/EasterEgg;->builder()Lcom/intermedia/model/config/EasterEgg$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/intermedia/model/config/EasterEgg$Builder;->build()Lcom/intermedia/model/config/EasterEgg;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/intermedia/model/config/Config$Builder;->makeItRain(Lcom/intermedia/model/config/EasterEgg;)Lcom/intermedia/model/config/Config$Builder;

    move-result-object v0

    invoke-static {}, Lcom/intermedia/model/config/Payouts;->builder()Lcom/intermedia/model/config/Payouts$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/intermedia/model/config/Payouts$Builder;->build()Lcom/intermedia/model/config/Payouts;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/intermedia/model/config/Config$Builder;->payouts(Lcom/intermedia/model/config/Payouts;)Lcom/intermedia/model/config/Config$Builder;

    move-result-object v0

    sget-object v1, Lcom/intermedia/model/config/Config$MinVersion;->DEFAULT:Lcom/intermedia/model/config/Config$MinVersion;

    .line 56
    invoke-virtual {v0, v1}, Lcom/intermedia/model/config/Config$Builder;->minVersion(Lcom/intermedia/model/config/Config$MinVersion;)Lcom/intermedia/model/config/Config$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract elPromptMs()I
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end method

.method public abstract eloiEnabled()Ljava/lang/Boolean;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end method

.method public abstract makeItRain()Lcom/intermedia/model/config/EasterEgg;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end method

.method public abstract minVersion()Lcom/intermedia/model/config/Config$MinVersion;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end method

.method public abstract payouts()Lcom/intermedia/model/config/Payouts;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end method

.method public abstract streamConfig()Lcom/intermedia/model/config/StreamConfig;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end method

.method public abstract toBuilder()Lcom/intermedia/model/config/Config$Builder;
.end method
