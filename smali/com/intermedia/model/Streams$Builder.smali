.class public abstract Lcom/intermedia/model/Streams$Builder;
.super Ljava/lang/Object;
.source "Streams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intermedia/model/Streams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract build()Lcom/intermedia/model/Streams;
.end method

.method public abstract high(Ljava/lang/String;)Lcom/intermedia/model/Streams$Builder;
.end method

.method public abstract low(Ljava/lang/String;)Lcom/intermedia/model/Streams$Builder;
.end method

.method public abstract medium(Ljava/lang/String;)Lcom/intermedia/model/Streams$Builder;
.end method

.method public abstract passthrough(Ljava/lang/String;)Lcom/intermedia/model/Streams$Builder;
.end method

.method public abstract source(Ljava/lang/String;)Lcom/intermedia/model/Streams$Builder;
.end method
