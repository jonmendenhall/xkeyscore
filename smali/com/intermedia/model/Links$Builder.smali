.class public abstract Lcom/intermedia/model/Links$Builder;
.super Ljava/lang/Object;
.source "Links.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intermedia/model/Links;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract build()Lcom/intermedia/model/Links;
.end method

.method public abstract next(Ljava/lang/String;)Lcom/intermedia/model/Links$Builder;
.end method

.method public abstract prev(Ljava/lang/String;)Lcom/intermedia/model/Links$Builder;
.end method

.method public abstract self(Ljava/lang/String;)Lcom/intermedia/model/Links$Builder;
.end method
