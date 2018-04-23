.class public abstract Lcom/intermedia/model/config/AdminConfig$SegmentToken$Builder;
.super Ljava/lang/Object;
.source "AdminConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intermedia/model/config/AdminConfig$SegmentToken;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract build()Lcom/intermedia/model/config/AdminConfig$SegmentToken;
.end method

.method public abstract name(Ljava/lang/String;)Lcom/intermedia/model/config/AdminConfig$SegmentToken$Builder;
.end method

.method public abstract token(Ljava/lang/String;)Lcom/intermedia/model/config/AdminConfig$SegmentToken$Builder;
.end method
