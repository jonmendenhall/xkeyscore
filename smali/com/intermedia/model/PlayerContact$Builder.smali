.class public abstract Lcom/intermedia/model/PlayerContact$Builder;
.super Ljava/lang/Object;
.source "PlayerContact.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intermedia/model/PlayerContact;
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
.method public abstract build()Lcom/intermedia/model/PlayerContact;
.end method

.method public abstract status(Lcom/intermedia/model/PlayerContact$Status;)Lcom/intermedia/model/PlayerContact$Builder;
.end method

.method public abstract user(Lcom/intermedia/model/PartialUser;)Lcom/intermedia/model/PlayerContact$Builder;
.end method

.method public abstract uuid(Ljava/lang/String;)Lcom/intermedia/model/PlayerContact$Builder;
.end method
