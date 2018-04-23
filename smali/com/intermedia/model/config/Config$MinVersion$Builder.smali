.class public abstract Lcom/intermedia/model/config/Config$MinVersion$Builder;
.super Ljava/lang/Object;
.source "Config.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intermedia/model/config/Config$MinVersion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract android(Ljava/lang/String;)Lcom/intermedia/model/config/Config$MinVersion$Builder;
.end method

.method public abstract build()Lcom/intermedia/model/config/Config$MinVersion;
.end method
