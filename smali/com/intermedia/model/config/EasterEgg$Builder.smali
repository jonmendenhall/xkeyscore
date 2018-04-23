.class public abstract Lcom/intermedia/model/config/EasterEgg$Builder;
.super Ljava/lang/Object;
.source "EasterEgg.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intermedia/model/config/EasterEgg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract build()Lcom/intermedia/model/config/EasterEgg;
.end method

.method public abstract enabled(Z)Lcom/intermedia/model/config/EasterEgg$Builder;
.end method

.method public abstract interval(J)Lcom/intermedia/model/config/EasterEgg$Builder;
.end method
