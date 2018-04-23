.class public abstract Lcom/intermedia/model/config/Config$Builder;
.super Ljava/lang/Object;
.source "Config.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intermedia/model/config/Config;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract build()Lcom/intermedia/model/config/Config;
.end method

.method public abstract elPromptMs(I)Lcom/intermedia/model/config/Config$Builder;
.end method

.method public abstract eloiEnabled(Ljava/lang/Boolean;)Lcom/intermedia/model/config/Config$Builder;
.end method

.method public abstract makeItRain(Lcom/intermedia/model/config/EasterEgg;)Lcom/intermedia/model/config/Config$Builder;
.end method

.method public abstract minVersion(Lcom/intermedia/model/config/Config$MinVersion;)Lcom/intermedia/model/config/Config$Builder;
.end method

.method public abstract payouts(Lcom/intermedia/model/config/Payouts;)Lcom/intermedia/model/config/Config$Builder;
.end method

.method public abstract streamConfig(Lcom/intermedia/model/config/StreamConfig;)Lcom/intermedia/model/config/Config$Builder;
.end method
