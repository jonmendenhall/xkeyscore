.class public abstract Lcom/intermedia/model/AddressBookContact;
.super Ljava/lang/Object;
.source "AddressBookContact.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Lcom/intermedia/libs/AutoGson;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/intermedia/model/AddressBookContact$Builder;,
        Lcom/intermedia/model/AddressBookContact$ContactMethod;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static builder()Lcom/intermedia/model/AddressBookContact$Builder;
    .locals 1

    .line 31
    new-instance v0, Lcom/intermedia/model/AutoParcel_AddressBookContact$Builder;

    invoke-direct {v0}, Lcom/intermedia/model/AutoParcel_AddressBookContact$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public abstract contactMethods()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/intermedia/model/AddressBookContact$ContactMethod;",
            ">;"
        }
    .end annotation
.end method

.method public abstract toBuilder()Lcom/intermedia/model/AddressBookContact$Builder;
.end method

.method public abstract user()Lcom/intermedia/model/PartialUser;
.end method

.method public abstract uuid()Ljava/lang/String;
.end method
