.class public abstract Lcom/intermedia/model/config/Payouts$Builder;
.super Ljava/lang/Object;
.source "Payouts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intermedia/model/config/Payouts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract active(Z)Lcom/intermedia/model/config/Payouts$Builder;
.end method

.method public abstract build()Lcom/intermedia/model/config/Payouts;
.end method

.method public abstract mode(Ljava/lang/String;)Lcom/intermedia/model/config/Payouts$Builder;
.end method

.method public abstract threshold(Ljava/lang/String;)Lcom/intermedia/model/config/Payouts$Builder;
.end method
