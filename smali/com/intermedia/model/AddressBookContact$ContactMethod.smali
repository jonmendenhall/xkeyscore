.class public final enum Lcom/intermedia/model/AddressBookContact$ContactMethod;
.super Ljava/lang/Enum;
.source "AddressBookContact.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intermedia/model/AddressBookContact;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ContactMethod"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/intermedia/model/AddressBookContact$ContactMethod;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/intermedia/model/AddressBookContact$ContactMethod;

.field public static final enum EMAIL:Lcom/intermedia/model/AddressBookContact$ContactMethod;

.field public static final enum FACEBOOK:Lcom/intermedia/model/AddressBookContact$ContactMethod;

.field public static final enum PHONE:Lcom/intermedia/model/AddressBookContact$ContactMethod;

.field public static final enum TWITTER:Lcom/intermedia/model/AddressBookContact$ContactMethod;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 15
    new-instance v0, Lcom/intermedia/model/AddressBookContact$ContactMethod;

    const-string v1, "PHONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/intermedia/model/AddressBookContact$ContactMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/intermedia/model/AddressBookContact$ContactMethod;->PHONE:Lcom/intermedia/model/AddressBookContact$ContactMethod;

    new-instance v0, Lcom/intermedia/model/AddressBookContact$ContactMethod;

    const-string v1, "EMAIL"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/intermedia/model/AddressBookContact$ContactMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/intermedia/model/AddressBookContact$ContactMethod;->EMAIL:Lcom/intermedia/model/AddressBookContact$ContactMethod;

    new-instance v0, Lcom/intermedia/model/AddressBookContact$ContactMethod;

    const-string v1, "TWITTER"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/intermedia/model/AddressBookContact$ContactMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/intermedia/model/AddressBookContact$ContactMethod;->TWITTER:Lcom/intermedia/model/AddressBookContact$ContactMethod;

    new-instance v0, Lcom/intermedia/model/AddressBookContact$ContactMethod;

    const-string v1, "FACEBOOK"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/intermedia/model/AddressBookContact$ContactMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/intermedia/model/AddressBookContact$ContactMethod;->FACEBOOK:Lcom/intermedia/model/AddressBookContact$ContactMethod;

    const/4 v0, 0x4

    .line 14
    new-array v0, v0, [Lcom/intermedia/model/AddressBookContact$ContactMethod;

    sget-object v1, Lcom/intermedia/model/AddressBookContact$ContactMethod;->PHONE:Lcom/intermedia/model/AddressBookContact$ContactMethod;

    aput-object v1, v0, v2

    sget-object v1, Lcom/intermedia/model/AddressBookContact$ContactMethod;->EMAIL:Lcom/intermedia/model/AddressBookContact$ContactMethod;

    aput-object v1, v0, v3

    sget-object v1, Lcom/intermedia/model/AddressBookContact$ContactMethod;->TWITTER:Lcom/intermedia/model/AddressBookContact$ContactMethod;

    aput-object v1, v0, v4

    sget-object v1, Lcom/intermedia/model/AddressBookContact$ContactMethod;->FACEBOOK:Lcom/intermedia/model/AddressBookContact$ContactMethod;

    aput-object v1, v0, v5

    sput-object v0, Lcom/intermedia/model/AddressBookContact$ContactMethod;->$VALUES:[Lcom/intermedia/model/AddressBookContact$ContactMethod;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/intermedia/model/AddressBookContact$ContactMethod;
    .locals 1

    .line 14
    const-class v0, Lcom/intermedia/model/AddressBookContact$ContactMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/intermedia/model/AddressBookContact$ContactMethod;

    return-object p0
.end method

.method public static values()[Lcom/intermedia/model/AddressBookContact$ContactMethod;
    .locals 1

    .line 14
    sget-object v0, Lcom/intermedia/model/AddressBookContact$ContactMethod;->$VALUES:[Lcom/intermedia/model/AddressBookContact$ContactMethod;

    invoke-virtual {v0}, [Lcom/intermedia/model/AddressBookContact$ContactMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/intermedia/model/AddressBookContact$ContactMethod;

    return-object v0
.end method
