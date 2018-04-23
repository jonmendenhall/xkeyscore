.class public abstract Lcom/intermedia/model/AddressBookContact$Builder;
.super Ljava/lang/Object;
.source "AddressBookContact.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intermedia/model/AddressBookContact;
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
.method public abstract build()Lcom/intermedia/model/AddressBookContact;
.end method

.method public abstract contactMethods(Ljava/util/List;)Lcom/intermedia/model/AddressBookContact$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/intermedia/model/AddressBookContact$ContactMethod;",
            ">;)",
            "Lcom/intermedia/model/AddressBookContact$Builder;"
        }
    .end annotation
.end method

.method public abstract user(Lcom/intermedia/model/PartialUser;)Lcom/intermedia/model/AddressBookContact$Builder;
.end method

.method public abstract uuid(Ljava/lang/String;)Lcom/intermedia/model/AddressBookContact$Builder;
.end method
