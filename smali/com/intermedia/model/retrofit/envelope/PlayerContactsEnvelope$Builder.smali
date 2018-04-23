.class public abstract Lcom/intermedia/model/retrofit/envelope/PlayerContactsEnvelope$Builder;
.super Ljava/lang/Object;
.source "PlayerContactsEnvelope.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intermedia/model/retrofit/envelope/PlayerContactsEnvelope;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract build()Lcom/intermedia/model/retrofit/envelope/PlayerContactsEnvelope;
.end method

.method public abstract links(Lcom/intermedia/model/Links;)Lcom/intermedia/model/retrofit/envelope/PlayerContactsEnvelope$Builder;
.end method

.method public abstract playerContacts(Ljava/util/List;)Lcom/intermedia/model/retrofit/envelope/PlayerContactsEnvelope$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/intermedia/model/PlayerContact;",
            ">;)",
            "Lcom/intermedia/model/retrofit/envelope/PlayerContactsEnvelope$Builder;"
        }
    .end annotation
.end method
