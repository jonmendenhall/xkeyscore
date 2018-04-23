.class final Lcom/intermedia/model/AutoParcel_AddressBookContact$Builder;
.super Lcom/intermedia/model/AddressBookContact$Builder;
.source "AutoParcel_AddressBookContact.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intermedia/model/AutoParcel_AddressBookContact;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Builder"
.end annotation


# instance fields
.field private contactMethods:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/intermedia/model/AddressBookContact$ContactMethod;",
            ">;"
        }
    .end annotation
.end field

.field private final set$:Ljava/util/BitSet;

.field private user:Lcom/intermedia/model/PartialUser;

.field private uuid:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 120
    invoke-direct {p0}, Lcom/intermedia/model/AddressBookContact$Builder;-><init>()V

    .line 116
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    iput-object v0, p0, Lcom/intermedia/model/AutoParcel_AddressBookContact$Builder;->set$:Ljava/util/BitSet;

    return-void
.end method

.method constructor <init>(Lcom/intermedia/model/AddressBookContact;)V
    .locals 1

    .line 122
    invoke-direct {p0}, Lcom/intermedia/model/AddressBookContact$Builder;-><init>()V

    .line 116
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    iput-object v0, p0, Lcom/intermedia/model/AutoParcel_AddressBookContact$Builder;->set$:Ljava/util/BitSet;

    .line 123
    invoke-virtual {p1}, Lcom/intermedia/model/AddressBookContact;->contactMethods()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/intermedia/model/AutoParcel_AddressBookContact$Builder;->contactMethods(Ljava/util/List;)Lcom/intermedia/model/AddressBookContact$Builder;

    .line 124
    invoke-virtual {p1}, Lcom/intermedia/model/AddressBookContact;->uuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/intermedia/model/AutoParcel_AddressBookContact$Builder;->uuid(Ljava/lang/String;)Lcom/intermedia/model/AddressBookContact$Builder;

    .line 125
    invoke-virtual {p1}, Lcom/intermedia/model/AddressBookContact;->user()Lcom/intermedia/model/PartialUser;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/intermedia/model/AutoParcel_AddressBookContact$Builder;->user(Lcom/intermedia/model/PartialUser;)Lcom/intermedia/model/AddressBookContact$Builder;

    return-void
.end method


# virtual methods
.method public build()Lcom/intermedia/model/AddressBookContact;
    .locals 5

    .line 147
    iget-object v0, p0, Lcom/intermedia/model/AutoParcel_AddressBookContact$Builder;->set$:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->cardinality()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_2

    const-string v0, "contactMethods"

    const-string v2, "uuid"

    const-string v3, "user"

    .line 148
    filled-new-array {v0, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    .line 151
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    .line 153
    iget-object v4, p0, Lcom/intermedia/model/AutoParcel_AddressBookContact$Builder;->set$:Ljava/util/BitSet;

    invoke-virtual {v4, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-nez v4, :cond_0

    const/16 v4, 0x20

    .line 154
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget-object v4, v0, v3

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 157
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing required properties:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 159
    :cond_2
    new-instance v0, Lcom/intermedia/model/AutoParcel_AddressBookContact;

    iget-object v1, p0, Lcom/intermedia/model/AutoParcel_AddressBookContact$Builder;->contactMethods:Ljava/util/List;

    iget-object v2, p0, Lcom/intermedia/model/AutoParcel_AddressBookContact$Builder;->uuid:Ljava/lang/String;

    iget-object v3, p0, Lcom/intermedia/model/AutoParcel_AddressBookContact$Builder;->user:Lcom/intermedia/model/PartialUser;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/intermedia/model/AutoParcel_AddressBookContact;-><init>(Ljava/util/List;Ljava/lang/String;Lcom/intermedia/model/PartialUser;Lcom/intermedia/model/AutoParcel_AddressBookContact$1;)V

    return-object v0
.end method

.method public contactMethods(Ljava/util/List;)Lcom/intermedia/model/AddressBookContact$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/intermedia/model/AddressBookContact$ContactMethod;",
            ">;)",
            "Lcom/intermedia/model/AddressBookContact$Builder;"
        }
    .end annotation

    .line 129
    iput-object p1, p0, Lcom/intermedia/model/AutoParcel_AddressBookContact$Builder;->contactMethods:Ljava/util/List;

    .line 130
    iget-object p1, p0, Lcom/intermedia/model/AutoParcel_AddressBookContact$Builder;->set$:Ljava/util/BitSet;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->set(I)V

    return-object p0
.end method

.method public user(Lcom/intermedia/model/PartialUser;)Lcom/intermedia/model/AddressBookContact$Builder;
    .locals 1

    .line 141
    iput-object p1, p0, Lcom/intermedia/model/AutoParcel_AddressBookContact$Builder;->user:Lcom/intermedia/model/PartialUser;

    .line 142
    iget-object p1, p0, Lcom/intermedia/model/AutoParcel_AddressBookContact$Builder;->set$:Ljava/util/BitSet;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->set(I)V

    return-object p0
.end method

.method public uuid(Ljava/lang/String;)Lcom/intermedia/model/AddressBookContact$Builder;
    .locals 1

    .line 135
    iput-object p1, p0, Lcom/intermedia/model/AutoParcel_AddressBookContact$Builder;->uuid:Ljava/lang/String;

    .line 136
    iget-object p1, p0, Lcom/intermedia/model/AutoParcel_AddressBookContact$Builder;->set$:Ljava/util/BitSet;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->set(I)V

    return-object p0
.end method
